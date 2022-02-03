{
  description = ''Argument parser'';
  inputs.src-nap-1_4_2.flake = false;
  inputs.src-nap-1_4_2.type = "github";
  inputs.src-nap-1_4_2.owner = "madprops";
  inputs.src-nap-1_4_2.repo = "nap";
  inputs.src-nap-1_4_2.ref = "refs/tags/1.4.2";
  
  outputs = { self, nixpkgs, src-nap-1_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-1_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nap-1_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}