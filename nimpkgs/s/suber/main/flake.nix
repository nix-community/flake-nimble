{
  description = ''Pub/Sub engine'';
  inputs.src-suber-main.flake = false;
  inputs.src-suber-main.type = "github";
  inputs.src-suber-main.owner = "olliNiinivaara";
  inputs.src-suber-main.repo = "Suber";
  inputs.src-suber-main.ref = "refs/heads/main";
  
  
  inputs."stashtable".type = "github";
  inputs."stashtable".owner = "riinr";
  inputs."stashtable".repo = "flake-nimble";
  inputs."stashtable".ref = "flake-pinning";
  inputs."stashtable".dir = "nimpkgs/s/stashtable";

  outputs = { self, nixpkgs, src-suber-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suber-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-suber-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}