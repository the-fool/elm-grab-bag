module App exposing (..)

import Html exposing (Html, div, text)


-- import Html.Events exposing (onClick)

import Html.App


-- Model


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Hellooooooooooooooooooo", Cmd.none )


type Msg
    = NoOp



-- View


view : Model -> Html Msg
view model =
    div []
        [ text model ]



-- Update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- Subs


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- Main


main : Program Never
main =
    Html.App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
