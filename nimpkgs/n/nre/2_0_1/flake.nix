{
  description = ''A better regular expression library'';
  inputs.src-nre-2_0_1.flake = false;
  inputs.src-nre-2_0_1.type = "github";
  inputs.src-nre-2_0_1.owner = "flaviut";
  inputs.src-nre-2_0_1.repo = "nre";
  inputs.src-nre-2_0_1.ref = "refs/tags/2.0.1";
  
  outputs = { self, nixpkgs, src-nre-2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nre-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nre-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}