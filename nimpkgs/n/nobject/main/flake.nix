{
  description = ''A partially compile and runtime evaluated object, inspired from .net object'';
  inputs.src-nobject-main.flake = false;
  inputs.src-nobject-main.type = "github";
  inputs.src-nobject-main.owner = "Carpall";
  inputs.src-nobject-main.repo = "nobject";
  inputs.src-nobject-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nobject-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nobject-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nobject-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}