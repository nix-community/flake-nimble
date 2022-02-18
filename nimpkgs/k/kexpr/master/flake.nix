{
  description = ''wrapper for kexpr math expression evaluation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-kexpr-master.flake = false;
  inputs.src-kexpr-master.type = "github";
  inputs.src-kexpr-master.owner = "brentp";
  inputs.src-kexpr-master.repo = "kexpr-nim";
  inputs.src-kexpr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kexpr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kexpr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kexpr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}