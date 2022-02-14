{
  description = ''Really lightweight template engine'';
  inputs.src-tim-main.flake = false;
  inputs.src-tim-main.type = "github";
  inputs.src-tim-main.owner = "openpeep";
  inputs.src-tim-main.repo = "tim";
  inputs.src-tim-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-tim-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}