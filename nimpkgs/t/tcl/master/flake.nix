{
  description = ''Wrapper for the TCL programming language'';
  inputs.src-tcl-master.flake = false;
  inputs.src-tcl-master.type = "github";
  inputs.src-tcl-master.owner = "nim-lang";
  inputs.src-tcl-master.repo = "tcl";
  inputs.src-tcl-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-tcl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tcl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tcl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}