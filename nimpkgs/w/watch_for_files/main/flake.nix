{
  description = ''cross-platform file watcher with database'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-watch_for_files-main.flake = false;
  inputs.src-watch_for_files-main.type = "github";
  inputs.src-watch_for_files-main.owner = "hamidb80";
  inputs.src-watch_for_files-main.repo = "watch_for_files";
  inputs.src-watch_for_files-main.ref = "refs/heads/main";
  inputs.src-watch_for_files-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-watch_for_files-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-watch_for_files-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-watch_for_files-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}