{
  description = ''Bindings for EGL, the native platform interface for rendering APIs.'';
  inputs.src-egl-master.flake = false;
  inputs.src-egl-master.type = "github";
  inputs.src-egl-master.owner = "nimious";
  inputs.src-egl-master.repo = "egl";
  inputs.src-egl-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  outputs = { self, nixpkgs, src-egl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-egl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-egl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}