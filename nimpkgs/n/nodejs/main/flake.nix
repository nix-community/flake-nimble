{
  description = ''NodeJS Standard Library for Nim'';
  inputs.src-nodejs-main.flake = false;
  inputs.src-nodejs-main.type = "github";
  inputs.src-nodejs-main.owner = "juancarlospaco";
  inputs.src-nodejs-main.repo = "nodestdlib";
  inputs.src-nodejs-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nodejs-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodejs-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodejs-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}