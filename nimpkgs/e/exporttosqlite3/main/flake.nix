{
  description = ''Export Nim functions to sqlite3'';
  inputs.src-exporttosqlite3-main.flake = false;
  inputs.src-exporttosqlite3-main.type = "github";
  inputs.src-exporttosqlite3-main.owner = "niklaskorz";
  inputs.src-exporttosqlite3-main.repo = "nim-exporttosqlite3";
  inputs.src-exporttosqlite3-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-exporttosqlite3-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-exporttosqlite3-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-exporttosqlite3-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}