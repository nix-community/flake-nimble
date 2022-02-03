{
  description = ''A high level SQLite API for Nim'';
  inputs.src-sqliteral-2_0_0.flake = false;
  inputs.src-sqliteral-2_0_0.type = "github";
  inputs.src-sqliteral-2_0_0.owner = "olliNiinivaara";
  inputs.src-sqliteral-2_0_0.repo = "SQLiteral";
  inputs.src-sqliteral-2_0_0.ref = "refs/tags/2.0.0";
  
  outputs = { self, nixpkgs, src-sqliteral-2_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqliteral-2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sqliteral-2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}