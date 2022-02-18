{
  description = ''Nim object validation using type field pragmas'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-validation-master.flake = false;
  inputs.src-validation-master.type = "github";
  inputs.src-validation-master.owner = "captainbland";
  inputs.src-validation-master.repo = "nim-validation";
  inputs.src-validation-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-validation-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-validation-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-validation-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}