{
  description = ''buffer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-buffer-master.flake = false;
  inputs.src-buffer-master.type = "github";
  inputs.src-buffer-master.owner = "bung87";
  inputs.src-buffer-master.repo = "buffer";
  inputs.src-buffer-master.ref = "refs/heads/master";
  
  
  inputs."struct".type = "github";
  inputs."struct".owner = "riinr";
  inputs."struct".repo = "flake-nimble";
  inputs."struct".ref = "flake-pinning";
  inputs."struct".dir = "nimpkgs/s/struct";

  outputs = { self, nixpkgs, flakeNimbleLib, src-buffer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-buffer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-buffer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}