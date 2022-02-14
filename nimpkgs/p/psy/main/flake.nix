{
  description = ''A fast, multi-threading and disk space efficient package manager for PHP development and production environments'';
  inputs.src-psy-main.flake = false;
  inputs.src-psy-main.type = "github";
  inputs.src-psy-main.owner = "psypac";
  inputs.src-psy-main.repo = "psypac";
  inputs.src-psy-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-psy-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-psy-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-psy-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}