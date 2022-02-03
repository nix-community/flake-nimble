{
  description = ''Special Functions of Stats & Physics'';
  inputs.src-spfun-main.flake = false;
  inputs.src-spfun-main.type = "github";
  inputs.src-spfun-main.owner = "c-blake";
  inputs.src-spfun-main.repo = "spfun";
  inputs.src-spfun-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-spfun-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spfun-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spfun-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}