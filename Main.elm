module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


-- MAIN
main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL
type alias Model =
  { products : List Product
  }

init : Model
init =
  { products = [] }

type alias Product =
  { name : String
  , weight : Float
  , price : Int
  , image : String
  }


-- UPDATE
type Msg = NoOp

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp -> model

-- VIEW
view : Model -> Html Msg
view model =
  div []
    [ div [class "products"]
      [ productView (Product "Banana" 1 5 "http://localhost:8000/banana.jpg")
      , productView (Product "Orange" 2 4 "http://localhost:8000/orange.jpg")
      , productView (Product "Grapes" 2 5 "http://localhost:8000/grapes.jpg")
      , productView (Product "Strawberry" 3 6 "http://localhost:8000/strawberry.jpg")
      , productView (Product "Blueberry" 4 7 "http://localhost:8000/blueberry.jpg")
      , productView (Product "Blackberry" 5 6 "http://localhost:8000/blackberry.jpg")
      , productView (Product "Watermelon" 6 7 "http://localhost:8000/watermelon.jpg")
      , productView (Product "Mandarin" 7 8 "http://localhost:8000/mandarin.jpg")
      , productView (Product "Cherry" 8 9 "http://localhost:8000/cherry.jpg")
      ]
    , div [class "basket"] [text "Check out"]
    ]

productView : Product -> Html Msg
productView p =
  div [ class "fruit" ]
    [ text p.name
    , img [ src p.image ] []
    ]