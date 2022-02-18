{
  description = ''Easy websocket with chronos support'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."news-master".type = "github";
  inputs."news-master".owner = "riinr";
  inputs."news-master".repo = "flake-nimble";
  inputs."news-master".ref = "flake-pinning";
  inputs."news-master".dir = "nimpkgs/n/news/master";

    inputs."news-0_2".type = "github";
  inputs."news-0_2".owner = "riinr";
  inputs."news-0_2".repo = "flake-nimble";
  inputs."news-0_2".ref = "flake-pinning";
  inputs."news-0_2".dir = "nimpkgs/n/news/0_2";

    inputs."news-0_3".type = "github";
  inputs."news-0_3".owner = "riinr";
  inputs."news-0_3".repo = "flake-nimble";
  inputs."news-0_3".ref = "flake-pinning";
  inputs."news-0_3".dir = "nimpkgs/n/news/0_3";

    inputs."news-0_4".type = "github";
  inputs."news-0_4".owner = "riinr";
  inputs."news-0_4".repo = "flake-nimble";
  inputs."news-0_4".ref = "flake-pinning";
  inputs."news-0_4".dir = "nimpkgs/n/news/0_4";

    inputs."news-0_5".type = "github";
  inputs."news-0_5".owner = "riinr";
  inputs."news-0_5".repo = "flake-nimble";
  inputs."news-0_5".ref = "flake-pinning";
  inputs."news-0_5".dir = "nimpkgs/n/news/0_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}