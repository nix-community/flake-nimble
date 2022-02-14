{
  description = ''read & write subtitle files with sbttl'';
  inputs.src-sbttl-main.flake = false;
  inputs.src-sbttl-main.type = "github";
  inputs.src-sbttl-main.owner = "hamidb80";
  inputs.src-sbttl-main.repo = "sbttl";
  inputs.src-sbttl-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-sbttl-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sbttl-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sbttl-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}