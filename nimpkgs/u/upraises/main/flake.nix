{
  description = ''exception tracking for older versions of nim'';
  inputs.src-upraises-main.flake = false;
  inputs.src-upraises-main.type = "github";
  inputs.src-upraises-main.owner = "markspanbroek";
  inputs.src-upraises-main.repo = "upraises";
  inputs.src-upraises-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-upraises-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-upraises-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-upraises-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}