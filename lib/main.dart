import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add),
          title: Text('Instagram'),
          actions: [Icon(Icons.favorite_border), SizedBox(width: 10)],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // HISTORIAS
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: Stack(
                              children: [
                                ClipOval(
                                  child: Image.network(
                                    'data:image/jpeg;base64,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',
                                    fit: BoxFit.cover,
                                    width: 75,
                                    height: 75,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Tu historia',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAxwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQMEBQYCBwj/xAA2EAABAwIEBQMCBQMEAwAAAAABAAIDBBEFEiExBhMiQVEyYXEUQgcjgZHRFaHBM0Ni4VKx8P/EABkBAAMBAQEAAAAAAAAAAAAAAAECAwQABf/EACIRAQEAAgICAgIDAAAAAAAAAAABAhEDIRIxEzIiQQRCYf/aAAwDAQACEQMRAD8A3TRnAunY2BugUZs1tE9FK4kaLPGynnMNrgKK6wOoU7PmZYqBICZE1LCFt9kbFdgW3S3JIF0Dm3HQ2TDycg8XUmQFoJBWR4q4j+hf9LSW55HW7s0fCaS0lshjinGOTAYYLCR+l/AWDe/f9/1UirmknfnmkLid7qGTe6tJqM+V3RmuLKxwjB6nEZBy25WX9R7rnB6H6yoGb0NOvuvS8GpYaeBuRoCE7pscOt1W4ZwjFE28zQ7xdWE/DlHICHU7Dp6ldc0NFgFzzQU/UPMWMr+EWEF0DnN/42WdqMFqIpsuQne5b3XqTnqrxCFpbn2I7hI64PMZ45KV5Y/TL3Wh4R4nq8Fq2Fsj30hIEsJ2I8jwVAxpoc9xHqvr7hVEUvLeNwEd7mkrNV9J0lTDV08dRTvEkUrQ5rmm6esV4Tw1xTX4FU5qaS8DtXwvN2O9/Y+69g4d4kocepuZTOLJB64Xbt/ke6W46BaW6k61mi4PqTrToF0Cxy4Js3TxK4Nl1dIbN0LrRKgZkYYtbkKSbMao7XncBOOcZG2AUI1OjNpZNl2ZcGNy6DcjdUwdBnq1Oi7fYbFM+o6BN1MoiYXPFg0XJRN0zfGvEMlBEKOkeW1Egu53/g32915y+Rz3XcS5zj1OcbkqZjda7EMTqKpxJzPsL9gNFAaeofKtOoyZZbruTwU2upD1n5SwtzStb5IRtCTvTU8PQ8qBhI1Oq19I8hgAWew6FwhZ0nRXlO7K0AhR8rG3HDpYF90B9k0HApdLJPkU8JDplUeo/MjIXTzGwAySBt1wyeke/K2oYXeL6p5aS6YvGKVw5h7grMSAtJzL07EaBsjXXGpWAxikNPO6+1zunxyQ5MOtxBjeQLa29lYYXitRhFZFVU0jo3MN9NnDwVWArtgzN1JNhonZ30Xgte3EsOiqWfc0Ei6swdAsH+GGKx1OD/SZvzYOkj/j2W4zaJNDaduuSVwHrlzkQ27zITIdqhAZWZc8BKyYeQh8RKGRNG9lFrdc65Rm5jg1I4sYL6JKeZhlGyO3LGOlGULO8dyGjwCeRnqdlYD8ustNzW5Lgrz/APE3EQ6kip2O3eDYdwO6bHup5WyPOpTYhg7bnyU2lcb6pFZnCk4c1zqtgY0ON767D3UZSaAuZIZWj0pbejYTeUawHFIogY5o5AB6MgFl3TYxVXy1NPre2jbKohxCrNI+oMZdEx4Y7ryWv8apYayV95mZzG0hrnHUXPbWxUrLpqlm+myhnzAHz2SVU8ghcIj1nYqFgpdVAWBIG6lYrCYoczbknRZ9XbVuaUroZpXnnzlwB3vr/dWtJTYfkDXRtc7zmuf3Wef9bI2oniia9kAzOzGwH8rqhq6iogmkZHBMIm3uwGN7ddhfQn+FeS6Z/LHemqczkANheXwn7XOuWH29ll+LoWPj5oFnNKu8PNRVsHQ8ADciyquLW5KR4PsEst2bOTxrFpyLaybSsPUtLz1zwvi02E4lFUwvLbG0jR9w8L3qinZWU0U0Rux7A4fBC+byCx4IdYb6LecBcZvonw4dXuvT3IjkcfRfsf1XBXrJFikKVjs4BuDcXCV1rJQcAITrAChds2mT55SSB7vSUpAA2RnytNlDbaiytl2K5p4ntfcldPnJdaySSfLGS0dXZECV2JMhjdnflAHnVea8TV5rq1z83SAAAfhaTiGXlNDSc1m8x/uTssLUPL5nuduSq4RLkvRtCEJ0Arvh2nExdcXBNlSLR8KSgFzTvmU+T6rcE/NZnBpWh3LILHdjsnoMMljaeY4BnZjQAAr2J7cg0TMjhJLYmzRqoeTb4xNwqlbTQ3a3V26k1tKJ4Mu3uuqashMIboAO6cLmyNJY9pHi6pbjoPHLbM1OCS3LoJXNJ3A1BXVBgj2EZnZR3DRZXUM4cSDoQVJYWDXcqcyGz/Cx04jiDWjssLxsfyZB3zhbioqgxh11XnHGVVzJWsad3ElHGy5ahOT8cLazKEIWp556Fwdma7e2i4bdps7TsuW7rqS5F+5XOezfhxjsuJ4OaerN6mjcIyT9zD6T/j9FrZHdK8z/AApbM6pr6wsLIpcrGjsSN16exlhbcJaJuKW2hCE+Ih4QgOmRc9thdAsQmchcNCnB0jVRjXXD42XUOtlbG0DudgpE0gaCd1R5ZMQme4vyQXsAN3W/9IgjVsDaoTSPPSGZiT2AFmj97lYKa2fSy2XF1cyjo46KkJGcnOe+nlYoq2Ppn5L2EIQmTCn4JPyapovofdQF3A7JK0hDKbh+O6ylei0892DXSyStZzKZ4Y8seRoQqakqD9O0g3sumYlM+QxsikzDaw3WbDHbfbtKpHVUEJaZAR79vhTaKkmbM17KiS33BxJv/CrHYhVU7xzaaS1u7b2UqPGng5hBKGW+5pTfFN7Pu6aEss0FuhG6TnFo1VRBjMdUbRnKRuCnpqgtjJuo5mxu3VbV6HXt5WBxybnVp9lo62c5ST4WPqX8yd7vdU4Z3tn/AJWXWjaAhKFqYAuo9d1wUArnPXuAKqB+HRNjGUxty2GljbW63sWwIK8R/Dmqkhx3IHflSRnOCe69tpQOULbHykpj6EEWCFwsHSyZjqnpHDZUlFiDTLYlT5KgOPSVNpRcTcWxlrDeR+jGhV2KySYZhsLIXhjjoX2vbQkq2ZCHzve62hVNxm9owg6i4eEZ7C+mHrZJZZc00hkce5OqjJyRtrOcLOfc6ptWZcu6AhKDZIVwBDTYgoQucu8NqOkC6tBUOaW8q2mtj3WWpZjC8HstRQSQzNaSQQd1C/jW3iy8k1mMOtllivb2upH9We+MNjia1o8hI2CIWOVv7KUIaYMzOa26W8lrR2rJZhI4ENAPsLJuSd19ToFIrp6eIEMy3ss5X4gAC2LXykkuVLcpjBi1aMhYw9R31VKlc4udmduUi044+MYOTPzoSg2SITphAF0IGi5y64SFb/WWHDGtdOGl2Rx0cPH917HwvxBFibX0skbqeth/1YHixHwvFuHcQjwzEWVE2cMcMuZg6m69lusSxikmmw/FMMrBPPTyNDyemVzD2cO6Wmeo5ghQop+ZEyRnpcLhCAbeS5DHLdpIVnA8nclQXu12UymuLEqbWnxuc3MX6XAWf4tjd/Tje7ml4uO9lo2gSNt7d1DxL6Smo5pKpmdrWEZb90YF9PNqmX6iZzmsyjs0dgmntMbsrrfold0yOLCG+LG9h4TzqcDD2VObV0hZb4CrtlqOhAQiAQhC5wT1NUzU7rxOsPCZSt3CFko42y9L6DHpbBskWvkFOy4pPKLMaWj5VTE25upzGi36LLlJK34XLSPPJLIbyPuoEz76KfUgAFVjhY2KrxxHmt05SoQrMoQhC5wSiyRC5ydh0lIJA2thdJHY+g2cPcJyojggrgKGodPCAHNkLcrhpcg/CgMJYQSnGtc6WMgZc7gGjzquppNvoHDKiF9DCSQTlDTbuQELF4LBiUeHxtbJYXzG+u4Qkd4VTwOErypkjxA0AKrgPLOn91zUzOcQCVONC6jrbNtdQMagdXUEjIwXPFnAX3t2USnL37JyqNVdlPTyCIygl0ndoHj90XfpkpBTijDLOFS2U5hbTKm6iXnSZ8rWXAFmjTRWWKU0cNOzljrvdz76uVQqxnyllKCkKEIlCEIXOBFt0BTn0gOHMmjF3DW47jx8qHEC54sELdH8e0+j6m7ahTgNNk3QQlpzOFgpFVJGxvSbm2izZd1tx6ivqTmGnZV0nqOiszDLIzNYi/sojqOoeHvZE9zGavIF8o91TjR5pudIqEIVmUIRdABJsucEoDDu4pO6LLnHmBrJ4ydgQVt8Ko6ephZM6KOQg3a62xWFIJaCNQ3crUcHVjhN9ITdrupv/S7SnH7b6lxEwR2lgLrAAZRYJU20BzQPZIo2dtMxY9zHbtCiyBxOqtsn5arJnct1l0idS8OjAFzsu8TljsDynvGxyC6YpJC5ugU1gtqUN6psJtl8Up5XZTKAxjjo3uD2uqZ7XMe5rhYtNlsa6Jry/ML3GxWWxBkbKkiP9VTG7T5cf2jBCEFOgFIoaZ1VMGgfKjrWcF0sU0TnOaC7PYXCMmzYzs7h+GONbTl7bZhcRW7+Vaz8Gsq/z6HLDLuYz6T/AAVoaTDmioY8NA7q/ihHdov5TXCXqqeenm03DGLgBjaIu92uFiuqfgzFZ5G56dsbe5e8f4XqDY7fcV1yxsb/ALpPihvmrGUXB0UYBrZ+YR/tRf5O6m4vS0lHg8ofHHDBE0nK0AfutFI0MB+23cdl5Nx3j8mJ1owyjLjAx2oH3nsnmEhLyWsWd7jvqhSK6jlopGxzWEhaCQOwKjpUqApWGyQxV8ElSLwh3WB4XFFKyCpZLI3M1tzl8m2iZJuToAL9lzlhDR/UvfK30lxNlDqmhk7mAbK4wd14cvgKoaObUjN9zypz2tlJqJ+F0fMj6rjNdS8Fj+kx+AC4aSRr2Nv+laYfAwQtcPFgmIYBBxFTl5s1/Uz510XTLtTx6jbQmzB5Qm4XgjTT2SqdrRpSf7ao6skyoQmxZal0P+mppOiVCWq8fpWYm8tglcDqBosgSXF1zfVCFTBLmCEITs4Wv4Ale6WeEnoaA4DwTulQmw9jHpdGOofCtAAhCrXU4ErvST7JEIAqOJJnw4bI5h1I1XlPBLBW48ZKnrc4OeSfP/xQhdfcNFZxLI6XGKt7txMWC3YBVh0KEKWXstCQ7JUIOW+Ck5iOyiYiwQV0jY9ADdCFOe18vpGowaR0lI1zt1zjrQKSGYaSRzNLXDtqhCX+y8+rRUbiY2knUi6RCEisf//Z',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'carlos',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEJfaQZJZunVPPAsHvTjlheSioHZMTGyHTkgv46ejVhg&s=10',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'mariag',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRnQavej39qlhzCzTX15AV-P00Xc4HkP1O54y3uCpKTw&s=10',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'alex_tech',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwW77suiEXcloBEUlqWl2GiHiJXDSgdM98YeBfpiRHRA&s=10',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'sofia_travel',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHkLjOPOmA5DPipJpmb14UZMV-ojRcPfThBI-kEieqDg&s=10',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'luis_fotos',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThpaNQuhee74c3ULdy84clY5s6XB87QMzjS1ym8f_kIQ&s=10',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'ana_cocina',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa6aNLWEVbA-DoOUuBvh3huQHjjjF-ABSiLLk5qIC0Sg&s=10',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'diego_music',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1tMFzpwvSLxs8aHhdbC9TifzzJ3lpdzfMzBjbv4Ib_g&s=10',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'valentina_art',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 75,
                            height: 75,
                            child: ClipOval(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzPzt3NOF27UMw3t4bkvpKTIH9beqOEzr6_H3qK7cpMg&s=10',
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'mateo_viajes',
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Divider(height: 1),

              // PUBLICACIÓN 1
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4r19GHqcAfI2BB9uTcLMkv_UWQd7QMWus9BH-JNGhVA&s=10',
                            width: 35,
                            height: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'carlos_art',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 350,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKs4slasJaRmlEPMCx4Bv08D0lIw7l0WZ3UD5mIt1QDw&s=10',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border, size: 28),
                        SizedBox(width: 15),
                        Icon(Icons.chat_bubble_outline, size: 26),
                        SizedBox(width: 15),
                        Icon(Icons.send_outlined, size: 26),
                        Spacer(),
                        Icon(Icons.bookmark_border, size: 28),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Les gusta a maria_g y 120 personas más',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'carlos_art ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Text(
                                'Un gran dia paseando con la mejor compañia',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // PUBLICACIÓN 2
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTixtQ7Mvr7bxkafUkFzXmqgQuXAADysFFyVdsUYfJO3Q&s=10',
                            width: 35,
                            height: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'sofia_travel',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 350,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlXnTArNVZncwDX5NJ7x4l5-VAkmLcoo5oKHNX5-3hVg&s=10',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border, size: 28),
                        SizedBox(width: 15),
                        Icon(Icons.chat_bubble_outline, size: 26),
                        SizedBox(width: 15),
                        Icon(Icons.send_outlined, size: 26),
                        Spacer(),
                        Icon(Icons.bookmark_border, size: 28),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '354 Me gusta',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'sofia_travel ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Text(
                                'atardecer bella',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),

        // BARRA DE NAVEGACIÓN INFERIOR
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline_sharp),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(Icons.messenger),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 9,
                      height: 9,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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',
                                   
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
