{
  description = ''A better regular expression library'';
  inputs.src-nre-2_0_2.flake = false;
  inputs.src-nre-2_0_2.type = "github";
  inputs.src-nre-2_0_2.owner = "flaviut";
  inputs.src-nre-2_0_2.repo = "nre";
  inputs.src-nre-2_0_2.ref = "refs/tags/2.0.2";
  
  outputs = { self, nixpkgs, src-nre-2_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nre-2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nre-2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}