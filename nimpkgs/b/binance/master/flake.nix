{
  description = ''A Nim library to access the Binance API.'';
  inputs.src-binance-master.flake = false;
  inputs.src-binance-master.type = "github";
  inputs.src-binance-master.owner = "Imperator26";
  inputs.src-binance-master.repo = "binance";
  inputs.src-binance-master.ref = "refs/heads/master";
  
  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  outputs = { self, nixpkgs, src-binance-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binance-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-binance-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}