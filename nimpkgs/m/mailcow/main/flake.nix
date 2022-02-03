{
  description = ''Simple API wrapper for Mailcow'';
  inputs.src-mailcow-main.flake = false;
  inputs.src-mailcow-main.type = "github";
  inputs.src-mailcow-main.owner = "Vaipex";
  inputs.src-mailcow-main.repo = "Mailcow-API";
  inputs.src-mailcow-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-mailcow-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mailcow-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mailcow-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}