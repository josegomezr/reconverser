import React from 'react';
import {
    StyleSheet,
    View,
    Text,
    TouchableOpacity,
} from 'react-native';

import {
    Input
} from 'react-native-elements';

const ClearIcon = ({...props}) => {
    return <TouchableOpacity {...props}>
        <View style={{
            backgroundColor: '#ccc',
            width: 16,
            height: 16,
            justifyContent: 'center',
            alignItems: 'center',
            borderRadius: 16,
            overflow: 'hidden'
        }}>
            <Text style={{
                fontSize: 12,
                color: 'white',
                textAlign: 'center',
            }}>&times;</Text>
        </View>
    </TouchableOpacity>
}

export default class Start extends React.Component {
    state = {
        vef: '0',
        bss: '0',
        editandoVEF: false,
        editandoBSS: false,
    }
    convertirABSS(text){
        var bss = ((parseFloat(text) || 0) / 10e4).toFixed(2);
        this.setState({
            vef: text,
            bss: bss
        })
    }
    
    convertirAVEF(text){
        var vef = ((parseFloat(text) || 0) * 10e4).toFixed(2);
        this.setState({
            bss: text,
            vef: vef
        })
    }

    render() {
        return (
            <View style={styles.mainView}>
                <Input
                    keyboardType="numeric"
                    placeholder='Bolívares Fuertes'
                    leftIcon={<Text>Bs.F</Text>}
                    value={this.state.vef}
                    onFocus={() => {
                        this.setState({
                            editandoVEF: true
                        })
                    }}
                    onBlur={() => {
                        this.setState({
                            editandoVEF: false
                        })
                    }}
                    rightIcon={this.state.editandoVEF && (
                        <ClearIcon onPress={() => {
                            this.setState({
                                vef: ''
                            })
                        }} />
                    )}
                    onChangeText={(text) => this.convertirABSS(text)}
                    inputContainerStyle={{
                        borderBottomColor: 'transparent',
                        borderBottomWidth: 0,
                    }}
                    />
                <Input
                    keyboardType="numeric"
                    placeholder='Bolívares Soberanos'
                    onChangeText={(text) => this.convertirAVEF(text)}
                    leftIcon={<Text>Bs.S</Text>}
                    onFocus={() => {
                        this.setState({
                            editandoBSS: true
                        })
                    }}
                    onBlur={() => {
                        this.setState({
                            editandoBSS: false
                        })
                    }}
                    rightIcon={this.state.editandoBSS && (
                        <ClearIcon onPress={() => {
                            this.setState({
                                bss: ''
                            })
                        }} />
                    )}
                    value={this.state.bss}
                    inputContainerStyle={{
                        borderBottomColor: 'transparent',
                        borderBottomWidth: 0,
                    }}
                />
            </View>
        );
    }

}

const styles = StyleSheet.create({
    mainView: {
        flex: 1,
    },
});