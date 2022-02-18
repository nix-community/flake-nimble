{
  description = ''FastCGI library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fastcgi-0_1_0.flake = false;
  inputs.src-fastcgi-0_1_0.type = "github";
  inputs.src-fastcgi-0_1_0.owner = "ba0f3";
  inputs.src-fastcgi-0_1_0.repo = "fastcgi.nim";
  inputs.src-fastcgi-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fastcgi-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fastcgi-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fastcgi-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}