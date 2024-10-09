// CustomNavbar.js
import React from "react";
import { View, TouchableOpacity, Text, StyleSheet } from "react-native";
import { Ionicons } from '@expo/vector-icons'; // Make sure to install this package

const CustomNavbar = ({ navigation }) => {
  return (
    <View style={styles.navbar}>
      <TouchableOpacity
        style={styles.navItem}
        onPress={() => navigation.navigate("Untitled")}
      >
        <Ionicons name="home-outline" size={24} color="black" />
        <Text style={styles.navText}>Home</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.navItem}
        onPress={() => navigation.navigate("Untitled1")}
      >
        <Ionicons name="settings-outline" size={24} color="black" />
        <Text style={styles.navText}>Settings</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.navItem}
        onPress={() => navigation.navigate("Untitled2")}
      >
        <Ionicons name="search-outline" size={24} color="black" />
        <Text style={styles.navText}>Search</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  navbar: {
    flexDirection: "row",
    justifyContent: "space-around",
    backgroundColor: "#E6E6E6",
    padding: 10,
    borderTopWidth: 1,
    borderTopColor: "#ccc",
  },
  navItem: {
    alignItems: "center",
  },
  navText: {
    fontSize: 12,
    color: "black",
  },
});

export default CustomNavbar;
