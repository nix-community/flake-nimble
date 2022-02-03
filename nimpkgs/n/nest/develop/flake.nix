{
  description = ''RESTful URI router'';
  inputs.src-nest-develop.flake = false;
  inputs.src-nest-develop.type = "github";
  inputs.src-nest-develop.owner = "kedean";
  inputs.src-nest-develop.repo = "nest";
  inputs.src-nest-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-nest-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nest-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nest-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}