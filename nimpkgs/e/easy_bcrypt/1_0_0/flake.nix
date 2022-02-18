{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-easy_bcrypt-1_0_0.flake = false;
  inputs.src-easy_bcrypt-1_0_0.type = "github";
  inputs.src-easy_bcrypt-1_0_0.owner = "Akito13";
  inputs.src-easy_bcrypt-1_0_0.repo = "easy-bcrypt";
  inputs.src-easy_bcrypt-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-easy_bcrypt-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easy_bcrypt-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-easy_bcrypt-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}