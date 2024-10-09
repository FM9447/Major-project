import React from "react";
import { StyleSheet, View, StatusBar, TouchableOpacity, Image } from "react-native";
import Svg, { Ellipse } from "react-native-svg";
import CustomNavbar from './CustomNavbar'; // Adjust the path as necessary

function Untitled(props) {
  return (
    <View style={styles.container}>
      <StatusBar animated={true} />
      
      {/* Main content area */}
      <View style={styles.contentArea}>
        {/* First button with home icon */}
        <TouchableOpacity
          onPress={() => props.navigation.navigate("Untitled1")}
          style={styles.button}
        >
          <Image
            source={require("../assets/images/home.png")}
            resizeMode="contain"
            style={styles.icon}
          />
        </TouchableOpacity>

        {/* SVG Ellipse element */}
        <Svg viewBox="0 0 54.65 54.48" style={styles.ellipse}>
          <Ellipse
            stroke="rgba(230, 230, 230,1)"
            strokeWidth={0}
            fill="rgba(255,255,255,1)"
            cx={27}
            cy={27}
            rx={27}
            ry={27}
          />
        </Svg>

        {/* Second button with search icon */}
        <TouchableOpacity
          onPress={() => props.navigation.navigate("Untitled2")}
          style={styles.button}
        >
          <Image
            source={require("../assets/images/search.png")}
            resizeMode="contain"
            style={styles.icon}
          />
        </TouchableOpacity>

        {/* SVG Ellipse element */}
        <Svg viewBox="0 0 54.65 54.48" style={styles.ellipse}>
          <Ellipse
            stroke="rgba(230, 230, 230,1)"
            strokeWidth={0}
            fill="rgba(255,255,255,1)"
            cx={27}
            cy={27}
            rx={27}
            ry={27}
          />
        </Svg>

        {/* Third button with settings icon */}
        <TouchableOpacity
          onPress={() => props.navigation.navigate("Settings")}
          style={styles.button}
        >
          <Image
            source={require("../assets/images/settings.png")}
            resizeMode="contain"
            style={styles.icon}
          />
        </TouchableOpacity>
      </View>

      {/* Custom Navbar */}
      <CustomNavbar navigation={props.navigation} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "rgba(20,20,20,1)",
    justifyContent: "center",
    alignItems: "center"
  },
  contentArea: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    width: '90%',
    height: 100,
    backgroundColor: "rgba(0, 0, 0, 1)",
    padding: 10,
    borderRadius: 10
  },
  button: {
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "rgba(255,255,255,1)",
    padding: 10,
    borderRadius: 5
  },
  icon: {
    width: 40,
    height: 40,
  },
  ellipse: {
    width: 55,
    height: 55
  },
});

export default Untitled;
