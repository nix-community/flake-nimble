{
  description = ''Simple API wrapper for Mailcow'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mailcow-main.flake = false;
  inputs.src-mailcow-main.type = "github";
  inputs.src-mailcow-main.owner = "Vaipex";
  inputs.src-mailcow-main.repo = "mailcow-API";
  inputs.src-mailcow-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mailcow-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mailcow-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mailcow-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}