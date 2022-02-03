{
  description = ''A high level SQLite API for Nim'';
  inputs.src-sqliteral-2_0_2.flake = false;
  inputs.src-sqliteral-2_0_2.type = "github";
  inputs.src-sqliteral-2_0_2.owner = "olliNiinivaara";
  inputs.src-sqliteral-2_0_2.repo = "SQLiteral";
  inputs.src-sqliteral-2_0_2.ref = "refs/tags/2.0.2";
  
  outputs = { self, nixpkgs, src-sqliteral-2_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqliteral-2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sqliteral-2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}