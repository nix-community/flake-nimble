{
  description = ''Huenim'';
  inputs.src-huenim-master.flake = false;
  inputs.src-huenim-master.type = "github";
  inputs.src-huenim-master.owner = "IoTone";
  inputs.src-huenim-master.repo = "huenim";
  inputs.src-huenim-master.ref = "refs/heads/master";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-huenim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-huenim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-huenim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}