{
  description = ''Nim - Java bridge'';
  inputs.src-jnim-v0_4_2.flake = false;
  inputs.src-jnim-v0_4_2.type = "github";
  inputs.src-jnim-v0_4_2.owner = "yglukhov";
  inputs.src-jnim-v0_4_2.repo = "jnim";
  inputs.src-jnim-v0_4_2.ref = "refs/tags/v0.4.2";
  
  outputs = { self, nixpkgs, src-jnim-v0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jnim-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jnim-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}