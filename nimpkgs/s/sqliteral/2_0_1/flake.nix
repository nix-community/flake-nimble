{
  description = ''A high level SQLite API for Nim'';
  inputs.src-sqliteral-2_0_1.flake = false;
  inputs.src-sqliteral-2_0_1.type = "github";
  inputs.src-sqliteral-2_0_1.owner = "olliNiinivaara";
  inputs.src-sqliteral-2_0_1.repo = "SQLiteral";
  inputs.src-sqliteral-2_0_1.ref = "refs/tags/2.0.1";
  
  outputs = { self, nixpkgs, src-sqliteral-2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqliteral-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sqliteral-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}