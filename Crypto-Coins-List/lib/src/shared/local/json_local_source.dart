import 'dart:convert';

/// A class to simulate fetch functions that make HTTP requests.
///
/// Simulated by being asynchronous and adding a delay of one second to the data
/// that's fetched.
class CryptoClientSimulator {
  static dynamic fetchUserData() async {
    await Future.delayed(const Duration(seconds: 2));

    final data = jsonDecode(jsonSource) as Map;
    data.remove('message');
    data.remove('data');

    return jsonEncode(data);
  }

  static dynamic fetchCoinsData() async {
    await Future.delayed(const Duration(seconds: 3));

    final data = jsonDecode(jsonSource) as Map;
    data.remove('wallet_id');
    data.remove('user_balance');

    return jsonEncode(data);
  }
}

const jsonSource = r'''
{
  "message": "All Coins",
  "wallet_id": "c0inS-13435-2342-zksh-34556",
  "user_balance": "15.455",
  "data": [
    {
      "currency_name": "Bitcoin",
      "cotation": "194.706",
      "symbol": "BTC",
      "image_url": "https://panda-crypto-images.s3.amazonaws.com/512d12d5c9a9b30c6d53-Bitcoin.png",
      "details": {
        "about": "O criador inicial do Bitcoin é conhecido por seu pseudônimo, Satoshi Nakamoto. Até o momento, em 2020, sua identidade verdadeira como pessoa — ou organização — permanece desconhecida.",
        "fee": 3.345
      }
    },
    {
      "currency_name": "Ethereum",
      "cotation": "14.417",
      "symbol": "ETH",
      "image_url": "https://panda-crypto-images.s3.amazonaws.com/ea4136ed8e00dbfc99d7-ethe.png",
      "details": {
        "about": "Ethereum foi o precursor do conceito de uma plataforma de blockchain de smart contract. Os smart contracts são programas de computador que executam automaticamente as ações necessárias para cumprir um acordo entre várias partes na internet.",
        "fee": 3.000
      }
    },
    {
      "currency_name": "Litecoin",
      "cotation": "508.29",
      "symbol": "LTC",
      "image_url": "https://panda-crypto-images.s3.amazonaws.com/d5a9f4c71bc49d5d5e17-Litecoin.png",
      "details": {
        "about": "Litecoin (LTC) é uma criptomoeda que foi projetada para fornecer pagamentos rápidos, seguros e com baixo custo, aproveitando as propriedades únicas da tecnologia blockchain.",
        "fee": 0.012
      }
    },
    {
      "currency_name": "Dogecoin",
      "cotation": "0.76",
      "symbol": "DOGE",
      "image_url": "https://panda-crypto-images.s3.amazonaws.com/8b4ed22ec89da926c125-Dogecoin.png",
      "details": {
        "about": "Dogecoin (DOGE) é baseada no meme popular da internet o Doge e possui como logotipo um Shiba Inu.",
        "fee": 0.001
      }
    },
    {
      "currency_name": "Dash",
      "cotation": "481.70",
      "symbol": "DASH",
      "image_url": "https://panda-crypto-images.s3.amazonaws.com/15484d45e078c88c07db-Dash.png",
      "details": {
        "about": "Dash é um blockchain de código aberto e criptomoeda focada em oferecer uma rede de pagamentos rápida, barata e global, que é descentralizada por natureza.",
        "fee": 1.798
      }
    },
    {
      "currency_name": "Chainlink",
      "cotation": "65.16",
      "symbol": "LINK",
      "image_url": "https://panda-crypto-images.s3.amazonaws.com/5c07c561b1419a189c14-Chainlink.png",
      "details": {
        "about": "Chainlink (LINK) é uma rede oracle descentralizada com o objetivo de conectar smart contracts com dados do mundo inteiro.",
        "fee": 0.012
      }
    },
    {
      "currency_name": "Axie Infinity",
      "cotation": "207.33",
      "symbol": "AXS",
      "image_url": "https://panda-crypto-images.s3.amazonaws.com/a91277f12ag891-axie-infinity.png",
      "details": {
        "about": "Axie Infinity é um jogo de trading e batalha baseado em blockchain que seus jogadores possuem, parcialmente a propriedade e controle da operação.",
        "fee": 0.435
      }
    },
    {
      "currency_name": "Decentraland",
      "cotation": "9.62",
      "symbol": "MANA",
      "image_url": "https://panda-crypto-images.s3.amazonaws.com/l82jbs981nsdd43-decentraland.png",
      "details": {
        "about": "Decentraland (MANA) se define como uma plataforma de realidade virtual fomentada no blockchain do Ethereum que permite que os usuários criem, experimentem e monetizem conteúdos e aplicativos.",
        "fee": 0.028
      }
    },
    {
      "currency_name": "Avalanche",
      "cotation": "348.77",
      "symbol": "AVAX",
      "image_url": "https://panda-crypto-images.s3.amazonaws.com/avax.png",
      "details": {
        "about": "Avalanche é um blockchain de camada 1 que funciona como uma plataforma para aplicativos descentralizados e redes de blockchain personalizáveis.",
        "fee": 0.078
      }
    }
  ]
}''';
