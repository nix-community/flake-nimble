{
  description = ''The Blackvas CLI'';
  inputs.src-blackvas_cli-master.flake = false;
  inputs.src-blackvas_cli-master.type = "github";
  inputs.src-blackvas_cli-master.owner = "momeemt";
  inputs.src-blackvas_cli-master.repo = "BlackvasCli";
  inputs.src-blackvas_cli-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, src-blackvas_cli-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blackvas_cli-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-blackvas_cli-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}