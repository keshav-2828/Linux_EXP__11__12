#!/bin/bash

display_header() {
    echo "-------------------------------------------"
    echo "        BASIC ILLNESS DIAGNOSIS SYSTEM"
    echo "-------------------------------------------"
    echo
}

get_symptoms() {
    echo "Enter your symptoms (separate by space):"
    echo "Examples: stomach sore_throat fever headache cough vomiting cold"
    read -r user_input
    symptoms=${user_input,,}
}

evaluate_rules() {
    local matched=false
    echo
    echo " POSSIBLE DIAGNOSIS "
    echo "--------------------"
    echo

    if [[ "$symptoms" == *"stomach"* ]]; then
        echo "- Stomach Pain:"
        echo "  • Possible causes: acidity, gas, indigestion, infection."
        echo "  • Drink water and avoid spicy food."
        matched=true
        echo
    fi

    if [[ "$symptoms" == *"sore_throat"* ]]; then
        echo "- Sore Throat:"
        echo "  • Caused by viral infection or cold."
        echo "  • Warm salt-water gargle is suggested."
        matched=true
        echo
    fi

    if [[ "$symptoms" == *"fever"* ]]; then
        echo "- Fever:"
        echo "  • Indicates viral or bacterial infection."
        echo "  • Stay hydrated and monitor temperature."
        matched=true
        echo
    fi

    if [[ "$symptoms" == *"headache"* ]]; then
        echo "- Headache:"
        echo "  • Caused by stress, dehydration, or migraine."
        echo "  • Proper rest is recommended."
        matched=true
        echo
    fi

    if [[ "$symptoms" == *"cough"* ]]; then
        echo "- Cough:"
        echo "  • Due to throat infection or cold."
        echo "  • Warm fluids help reduce irritation."
        matched=true
        echo
    fi

    if [[ "$symptoms" == *"vomiting"* ]]; then
        echo "- Vomiting:"
        echo "  • Commonly caused by food poisoning."
        echo "  • ORS and light food are advised."
        matched=true
        echo
    fi

    if [[ "$symptoms" == *"cold"* ]]; then
        echo "- Common Cold:"
        echo "  • Caused by viral infection."
        echo "  • Rest and warm fluids recommended."
        matched=true
        echo
    fi

    if [[ "$matched" == false ]]; then
        echo "- No specific illness detected."
        echo "  Please consult a doctor."
        echo
    fi

    echo "IMPORTANT:"
    echo " • This system gives only general guidance."
    echo " • It is not a substitute for medical diagnosis."
    echo
}

display_header
get_symptoms
evaluate_rules
exit 0
