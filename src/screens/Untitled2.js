import React, { Component } from "react";
import {
  StyleSheet,
  View,
  StatusBar,
  TouchableOpacity,
  Image
} from "react-native";
import Svg, { Ellipse } from "react-native-svg";

function Untitled2(props) {
  return (
    <View style={styles.container}>
      <StatusBar animated barStyle="dark-content" />
      <View style={styles.rect}></View>
      <View style={styles.rect2Stack}>
        <View style={styles.rect2}>
          <View style={styles.buttonStack}>
            <TouchableOpacity
              onPress={() => props.navigation.navigate("Untitled1")}
              style={styles.button}
            ></TouchableOpacity>
            <TouchableOpacity
              onPress={() => props.navigation.navigate("Untitled")}
              style={styles.button2}
            ></TouchableOpacity>
            <Image
              source={require("../assets/images/home-black.png")}
              resizeMode="contain"
              style={styles.image6}
            ></Image>
          </View>
        </View>
        <Svg viewBox="0 0 54.65 54.48" style={styles.ellipse}>
          <Ellipse
            stroke="rgba(230, 230, 230,1)"
            strokeWidth={0}
            fill="rgba(255,255,255,1)"
            cx={27}
            cy={27}
            rx={27}
            ry={27}
          ></Ellipse>
        </Svg>
        <Svg viewBox="0 0 54.65 54.48" style={styles.ellipse1}>
          <Ellipse
            stroke="rgba(230, 230, 230,1)"
            strokeWidth={0}
            fill="rgba(0,0,0,1)"
            cx={27}
            cy={27}
            rx={27}
            ry={27}
          ></Ellipse>
        </Svg>
        <View style={styles.rect5}></View>
        <Image
          source={require("../assets/images/search.png")}
          resizeMode="contain"
          style={styles.image5}
        ></Image>
        <Image
          source={require("../assets/images/Settings-white.png")}
          resizeMode="contain"
          style={styles.image7}
        ></Image>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "rgba(20,20,20,1)"
  },
  rect: {
    width: 100,
    height: 100,
    backgroundColor: "#E6E6E6",
    marginTop: 290,
    marginLeft: 603
  },
  rect2: {
    top: 0,
    left: 28,
    width: 209,
    height: 54,
    position: "absolute",
    backgroundColor: "rgba(0,0,0,1)",
    flexDirection: "row"
  },
  button: {
    top: 0,
    left: 0,
    width: 70,
    height: 54,
    position: "absolute",
    backgroundColor: "rgba(255,255,255,1)"
  },
  button2: {
    top: 0,
    left: 69,
    width: 69,
    height: 54,
    position: "absolute",
    backgroundColor: "rgba(255,255,255,1)"
  },
  image6: {
    top: 8,
    left: 70,
    width: 69,
    height: 39,
    position: "absolute"
  },
  buttonStack: {
    width: 139,
    height: 54
  },
  ellipse: {
    top: 0,
    left: 0,
    width: 55,
    height: 54,
    position: "absolute"
  },
  ellipse1: {
    top: 0,
    left: 210,
    width: 55,
    height: 54,
    position: "absolute"
  },
  rect5: {
    top: 0,
    left: 167,
    width: 71,
    height: 54,
    position: "absolute",
    backgroundColor: "rgba(0,0,0,1)"
  },
  image5: {
    top: 8,
    left: 10,
    width: 87,
    height: 39,
    position: "absolute"
  },
  image7: {
    top: 8,
    left: 167,
    width: 98,
    height: 39,
    position: "absolute"
  },
  rect2Stack: {
    width: 265,
    height: 54,
    marginTop: 326,
    marginLeft: 55
  }
});

export default Untitled2;
