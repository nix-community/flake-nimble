{
  description = ''Bindings for picohttpparser.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-picohttpparser-0_9_0.flake = false;
  inputs.src-picohttpparser-0_9_0.type = "github";
  inputs.src-picohttpparser-0_9_0.owner = "philip-wernersbach";
  inputs.src-picohttpparser-0_9_0.repo = "nim-picohttpparser";
  inputs.src-picohttpparser-0_9_0.ref = "refs/tags/0.9.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-picohttpparser-0_9_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-picohttpparser-0_9_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-picohttpparser-0_9_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}