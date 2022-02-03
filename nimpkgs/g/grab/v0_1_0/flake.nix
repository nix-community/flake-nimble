{
  description = ''grab statement for importing Nimble packages, similar to Groovy's Grape'';
  inputs.src-grab-v0_1_0.flake = false;
  inputs.src-grab-v0_1_0.type = "github";
  inputs.src-grab-v0_1_0.owner = "metagn";
  inputs.src-grab-v0_1_0.repo = "grab";
  inputs.src-grab-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-grab-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grab-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-grab-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}