{
  description = ''Pub/Sub engine'';
  inputs.src-suber-0_9_9.flake = false;
  inputs.src-suber-0_9_9.type = "github";
  inputs.src-suber-0_9_9.owner = "olliNiinivaara";
  inputs.src-suber-0_9_9.repo = "Suber";
  inputs.src-suber-0_9_9.ref = "refs/tags/0.9.9";
  
  
  inputs."stashtable".type = "github";
  inputs."stashtable".owner = "riinr";
  inputs."stashtable".repo = "flake-nimble";
  inputs."stashtable".ref = "flake-pinning";
  inputs."stashtable".dir = "nimpkgs/s/stashtable";

  outputs = { self, nixpkgs, src-suber-0_9_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suber-0_9_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-suber-0_9_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}