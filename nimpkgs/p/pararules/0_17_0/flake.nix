{
  description = ''A rules engine'';
  inputs.src-pararules-0_17_0.flake = false;
  inputs.src-pararules-0_17_0.type = "github";
  inputs.src-pararules-0_17_0.owner = "paranim";
  inputs.src-pararules-0_17_0.repo = "pararules";
  inputs.src-pararules-0_17_0.ref = "refs/tags/0.17.0";
  
  outputs = { self, nixpkgs, src-pararules-0_17_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pararules-0_17_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pararules-0_17_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}