{
  description = ''Bindings for OpenGL ES, the embedded 3D graphics library.'';
  inputs.src-gles-master.flake = false;
  inputs.src-gles-master.type = "github";
  inputs.src-gles-master.owner = "nimious";
  inputs.src-gles-master.repo = "gles";
  inputs.src-gles-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-gles-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gles-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gles-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}