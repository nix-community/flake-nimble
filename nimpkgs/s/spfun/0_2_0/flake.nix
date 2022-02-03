{
  description = ''Special Functions of Stats & Physics'';
  inputs.src-spfun-0_2_0.flake = false;
  inputs.src-spfun-0_2_0.type = "github";
  inputs.src-spfun-0_2_0.owner = "c-blake";
  inputs.src-spfun-0_2_0.repo = "spfun";
  inputs.src-spfun-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-spfun-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spfun-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spfun-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}