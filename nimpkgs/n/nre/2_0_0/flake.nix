{
  description = ''A better regular expression library'';
  inputs.src-nre-2_0_0.flake = false;
  inputs.src-nre-2_0_0.type = "github";
  inputs.src-nre-2_0_0.owner = "flaviut";
  inputs.src-nre-2_0_0.repo = "nre";
  inputs.src-nre-2_0_0.ref = "refs/tags/2.0.0";
  
  outputs = { self, nixpkgs, src-nre-2_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nre-2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nre-2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}