import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<Map<String, String>> cryptoData = [
  {"name": "Bitcoin", "symbol": "BTC", "price": "R\$ 93987.36", "icon": "bitcoin.png","descripition": "Bitcoin (BTC) é a primeira criptomoeda construída na tecnologia blockchain, também conhecida como uma moeda digital descentralizada que é baseada em criptografia. Ao contrário de moedas fiduciárias ou emitidas pelo governo, como dólares americanos ou euros, que são controladas por bancos centrais, o Bitcoin pode operar sem a necessidade de uma autoridade central, como um banco central ou uma empresa. A natureza descentralizada permite que ele opere em uma rede ponto a ponto, por meio da qual os usuários podem enviar fundos uns aos outros sem passar por intermediários."},
  {"name": "Ethereum", "symbol": "ETH", "price": "R\$ 3438.82", "icon": "ethereum.png","descripition":"Ethereum é um blockchain Proof-of-Stake que alimenta aplicativos descentralizados ( dApps ) por meio de contratos inteligentes , sem ser controlado por uma entidade centralizada. Como o primeiro blockchain a apresentar contratos inteligentes, ele tem o maior ecossistema de aplicativos descentralizados, variando de exchanges descentralizadas a plataformas de empréstimo e empréstimo de criptomoedas e muito mais. "},
  {"name": "Tether", "symbol": "USDT", "price": "R\$ 0.9998", "icon": "tether.png","descripition":"Tether é uma stablecoin atrelada ao dólar americano. Uma stablecoin é um tipo de criptomoeda cujo valor é atrelado a outra moeda fiduciária, como o dólar americano, ou a uma commodity, como o ouro. "},
  {"name": "BNB", "symbol": "BNB", "price": "R\$ 641.46", "icon": "bnb.png","descripition":"BNB (BNB), anteriormente também conhecido como Binance Coin (BNB), é uma moeda de criptomoeda criada e emitida pela exchange de criptomoedas Binance . Inicialmente criado no blockchain Ethereum como um token ERC-20 em julho de 2017, o BNB foi migrado para a BNB Smart Chain em fevereiro de 2019 e se tornou a moeda nativa da Binance Chain."},
  {"name": "Solana", "symbol": "SOL", "price": "R\$ 236.32", "icon": "solana.png","descripition":"Solana é uma blockchain de Camada 1 que oferece aos usuários velocidades rápidas e custos acessíveis. Ela suporta contratos inteligentes e facilita a criação de aplicativos descentralizados (dApps). Projetos construídos em Solana incluem uma variedade de plataformas DeFi, bem como mercados NFT, onde os usuários podem comprar projetos NFT baseados em Solana ."},
  {"name": "USDC", "symbol": "USDC", "price": "R\$ 0.9987", "icon": "usdc.png","descripition":"USDC é uma stablecoin de dólar americano totalmente colateralizada. USDC é a ponte entre dólares e negociação em bolsas de criptomoedas. A tecnologia por trás do CENTRE torna possível a troca de valor entre pessoas, empresas e instituições financeiras, assim como o e-mail entre serviços de correio e textos entre provedores de SMS. Acreditamos que, ao remover fronteiras econômicas artificiais, podemos criar uma economia global mais inclusiva."},
  {"name": "XRP", "symbol": "XRP", "price": "R\$ 1.42", "icon": "xrp.png","descripition":"Ripple é uma empresa fintech privada que fornece uma solução global de pagamento por meio de sua rede de pagamento patenteada chamada Ripple Network (também conhecida como RippleNet). RippleNet é uma rede de pagamento que é construída sobre o livro-razão de consenso da Ripple, chamado XRP Ledger (também conhecido como XRPL). Ripple financiou o desenvolvimento do XRP Ledger de código aberto."},
  {"name": "Lido Staked Ether", "symbol": "STETH", "price": "R\$ 3427.60", "icon": "lido.png","descripition":"Lido Staked Ether (stETH) é um token que representa seu ether apostado no Lido, combinando o valor do depósito inicial e as recompensas de aposta. Os tokens stETH são cunhados no momento do depósito e queimados quando resgatados."},
  {"name": "Dogecoin", "symbol": "DOGE", "price": "R\$ 0.4001", "icon": "dogecoin.png","descripition":"Dogecoin é uma criptomoeda criada em 6 de dezembro de 2013 com base no popular meme da Internet Doge e apresenta um Shiba Inu em seu logotipo. A base de código do projeto era um fork do Litecoin, então ele herdou muitos dos mesmos recursos, como o algoritmo de hash, com a única diferença sendo a marca e o grande suprimento inflacionário."},
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Cripto Moedas'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: cryptoData.length,
        itemBuilder: (context, index) {
          final crypto = cryptoData[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: ListTile(
              onTap: () => Navigator.pushNamed(
                context,
                '/cripto',
                arguments: crypto,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 24,
                backgroundImage: AssetImage('assets/images/${crypto['icon']}'),
              ),
              title: Text(
                crypto['name']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(crypto['symbol']!),
              trailing: Text(
                crypto['price']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
      backgroundColor: Colors.white60,
    );
  }
}