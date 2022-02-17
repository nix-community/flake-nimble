{
  description = ''Pub/Sub engine'';
  inputs.src-suber-2_0_0.flake = false;
  inputs.src-suber-2_0_0.type = "github";
  inputs.src-suber-2_0_0.owner = "olliNiinivaara";
  inputs.src-suber-2_0_0.repo = "Suber";
  inputs.src-suber-2_0_0.ref = "refs/tags/2.0.0";
  
  
  inputs."stashtable".type = "github";
  inputs."stashtable".owner = "riinr";
  inputs."stashtable".repo = "flake-nimble";
  inputs."stashtable".ref = "flake-pinning";
  inputs."stashtable".dir = "nimpkgs/s/stashtable";

  outputs = { self, nixpkgs, src-suber-2_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suber-2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-suber-2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}