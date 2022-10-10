module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)


type alias Model =
    { count : Int }


initialModel : Model
initialModel =
    { count = 0 }


type Msg
    = SetHAHA String


update : Msg -> Model -> Model
update msg model =
    case msg of
       SetHAHA genau ->
           model 


view : Model -> Html Msg
view model =
    div []
        [ Html.p [Html.Attributes.style "font" "30px Comic Sans MS ",Html.Attributes.style "color" "red"][Html.text "CO2 and Greenhouse Gas Emissions"]
          , Html.p [Html.Attributes.style "font" "24px Comic Sans MS ",Html.Attributes.style "color" "red"][Html.text "Projekt Information Retrieval und Visualisierung"]
          , Html.p [][Html.text "Im folgenden Projekt bla bla bla bla"]
          , Html.select [onInput SetHAHA][]
        ]


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }