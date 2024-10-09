import React, { useState, useEffect } from "react";
import { NavigationContainer } from '@react-navigation/native';
import { createDrawerNavigator } from '@react-navigation/drawer';
import { createStackNavigator } from '@react-navigation/stack';
import AppLoading from "expo-app-loading";
import * as Font from "expo-font";
import Untitled from "./src/screens/Untitled";
import Untitled1 from "./src/screens/Untitled1";
import Untitled2 from "./src/screens/Untitled2";

const Drawer = createDrawerNavigator();
const Stack = createStackNavigator();

function DrawerNavigator() {
  return (
    <Drawer.Navigator>
      <Drawer.Screen name="Untitled" component={Untitled} />
      <Drawer.Screen name="Untitled1" component={Untitled1} />
      <Drawer.Screen name="Untitled2" component={Untitled2} />
    </Drawer.Navigator>
  );
}

function App() {
  const [isLoadingComplete, setLoadingComplete] = useState(false);

  useEffect(() => {
    async function loadResourcesAsync() {
      await Font.loadAsync({
        "roboto-regular": require("./src/assets/fonts/roboto-regular.ttf"),
      });
    }

    loadResourcesAsync().then(() => setLoadingComplete(true)).catch(error => {
      console.warn(error);
    });
  }, []);

  if (!isLoadingComplete) {
    return <AppLoading />;
  }

  return (
    <NavigationContainer>
      <Stack.Navigator headerMode="none">
        <Stack.Screen name="Main" component={DrawerNavigator} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;
