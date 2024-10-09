import React, { Component } from "react";
import {
  StyleSheet,
  View,
  StatusBar,
  TouchableOpacity,
  Image,
  Text
} from "react-native";
import Svg, { Ellipse } from "react-native-svg";
import Icon from "react-native-vector-icons/MaterialCommunityIcons";

function Untitled1(props) {
  return (
    <View style={styles.container}>
      <StatusBar animated />
      <View style={styles.rect}></View>
      <View style={styles.rect2Stack}>
        <View style={styles.rect2}>
          <View style={styles.rect3Row}>
            <View style={styles.rect3}></View>
            <TouchableOpacity
              onPress={() => props.navigation.navigate("Untitled")}
              style={styles.button}
            >
              <Image
                source={require("../assets/images/home-black.png")}
                resizeMode="contain"
                style={styles.image6}
              ></Image>
            </TouchableOpacity>
          </View>
        </View>
        <Svg viewBox="0 0 54.65 54.48" style={styles.ellipse}>
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
        <Svg viewBox="0 0 54.65 54.48" style={styles.ellipse1}>
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
        <TouchableOpacity
          onPress={() => props.navigation.navigate("Untitled2")}
          style={styles.button2}
        ></TouchableOpacity>
        <Image
          source={require("../assets/images/settings.png")}
          resizeMode="contain"
          style={styles.image4}
        ></Image>
        <Image
          source={require("../assets/images/search-white1.png")}
          resizeMode="contain"
          style={styles.image7}
        ></Image>
      </View>
      <Text style={styles.text}>39</Text>
      <Icon name="home" style={styles.icon}></Icon>
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
  rect3: {
    width: 69,
    height: 54,
    backgroundColor: "rgba(0,0,0,1)"
  },
  button: {
    width: 70,
    height: 54,
    backgroundColor: "rgba(255,255,255,1)"
  },
  image6: {
    width: 69,
    height: 39,
    marginTop: 8,
    marginLeft: 1
  },
  rect3Row: {
    height: 54,
    flexDirection: "row",
    flex: 1,
    marginRight: 70
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
  image7: {
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
  },
  text: {
    fontFamily: "roboto-regular",
    color: "#121212",
    marginTop: -364,
    marginLeft: 188
  },
  icon: {
    color: "rgba(128,128,128,1)",
    fontSize: 40,
    marginTop: -601,
    marginLeft: -110
  }
});

export default Untitled1;
