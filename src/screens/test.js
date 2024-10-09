import React, { useState } from 'react';
import { SafeAreaView, StyleSheet, Text, TextInput, View } from 'react-native';

const App = () => {
  // State to store user's name
  const [name, setName] = useState('');

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.innerContainer}>
        <Text style={styles.title}>Enter your name:</Text>

        {/* Text Input field */}
        <TextInput
          style={styles.input}
          placeholder="Type your name here"
          value={name}
          onChangeText={text => setName(text)}
        />

        {/* Displaying entered name */}
        {name ? <Text style={styles.displayName}>Hello, {name}!</Text> : null}
      </View>
    </SafeAreaView>
  );
};

// StyleSheet to handle UI styling
const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#f8f8f8',
  },
  innerContainer: {
    width: '80%',
  },
  title: {
    fontSize: 24,
    marginBottom: 10,
    textAlign: 'center',
  },
  input: {
    height: 50,
    borderColor: '#cccccc',
    borderWidth: 1,
    paddingLeft: 10,
    borderRadius: 5,
    backgroundColor: '#ffffff',
    fontSize: 18,
  },
  displayName: {
    marginTop: 20,
    fontSize: 20,
    textAlign: 'center',
    color: '#333333',
  },
});

export default App;
