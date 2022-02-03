{
  description = ''colorizeEcho is a package which colorize echo message on Windows command prompt.'';
  inputs.src-colorizeEcho-main.flake = false;
  inputs.src-colorizeEcho-main.type = "github";
  inputs.src-colorizeEcho-main.owner = "s3pt3mb3r";
  inputs.src-colorizeEcho-main.repo = "colorizeEcho";
  inputs.src-colorizeEcho-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-colorizeEcho-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorizeEcho-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-colorizeEcho-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}