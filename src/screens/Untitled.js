// Untitled.js
import React from "react";
import { StyleSheet, View, StatusBar, TouchableOpacity, Image } from "react-native";
import Svg, { Ellipse } from "react-native-svg";
import CustomNavbar from './CustomNavbar'; // Adjust the path as necessary

function Untitled(props) {
  return (
    <View style={styles.container}>
      <StatusBar animated />
      <View style={styles.rect}></View>
      <View style={styles.rect2Stack}>
        <View style={styles.rect2}>
          <View style={styles.buttonRow}>
            <TouchableOpacity
              onPress={() => props.navigation.navigate("Untitled1")}
              style={styles.button}
            ></TouchableOpacity>
            <View style={styles.rect4}>
              <Image
                source={require("../assets/images/home.png")}
                resizeMode="contain"
                style={styles.image2}
              />
            </View>
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
          />
        </Svg>
        <Svg viewBox="0 0 54.65 54.48" style={styles.ellipse1}>
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
        <TouchableOpacity
          onPress={() => props.navigation.navigate("Untitled2")}
          style={styles.button2}
        />
        <Image
          source={require("../assets/images/settings.png")}
          resizeMode="contain"
          style={styles.image4}
        />
        <Image
          source={require("../assets/images/search.png")}
          resizeMode="contain"
          style={styles.image5}
        />
      </View>
      <CustomNavbar navigation={props.navigation} />
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
    width: 69,
    height: 54,
    backgroundColor: "rgba(255,255,255,1)"
  },
  rect4: {
    width: 69,
    height: 54,
    backgroundColor: "rgba(0,0,0,1)"
  },
  image2: {
    width: 69,
    height: 39,
    marginTop: 7
  },
  buttonRow: {
    height: 54,
    flexDirection: "row",
    flex: 1,
    marginRight: 71
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
  button2: {
    top: 0,
    left: 167,
    width: 71,
    height: 54,
    position: "absolute",
    backgroundColor: "rgba(255,255,255,1)"
  },
  image4: {
    top: 8,
    left: 167,
    width: 98,
    height: 39,
    position: "absolute"
  },
  image5: {
    top: 8,
    left: 10,
    width: 87,
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

export default Untitled;
