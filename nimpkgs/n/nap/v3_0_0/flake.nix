{
  description = ''Argument parser'';
  inputs.src-nap-v3_0_0.flake = false;
  inputs.src-nap-v3_0_0.type = "github";
  inputs.src-nap-v3_0_0.owner = "madprops";
  inputs.src-nap-v3_0_0.repo = "nap";
  inputs.src-nap-v3_0_0.ref = "refs/tags/v3.0.0";
  
  outputs = { self, nixpkgs, src-nap-v3_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-v3_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nap-v3_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}