{
  description = ''Nim - Java bridge'';
  inputs.src-jnim-v0_4_1.flake = false;
  inputs.src-jnim-v0_4_1.type = "github";
  inputs.src-jnim-v0_4_1.owner = "yglukhov";
  inputs.src-jnim-v0_4_1.repo = "jnim";
  inputs.src-jnim-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, src-jnim-v0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jnim-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jnim-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}