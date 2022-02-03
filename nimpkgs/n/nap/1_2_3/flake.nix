{
  description = ''Argument parser'';
  inputs.src-nap-1_2_3.flake = false;
  inputs.src-nap-1_2_3.type = "github";
  inputs.src-nap-1_2_3.owner = "madprops";
  inputs.src-nap-1_2_3.repo = "nap";
  inputs.src-nap-1_2_3.ref = "refs/tags/1.2.3";
  
  outputs = { self, nixpkgs, src-nap-1_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-1_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nap-1_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}