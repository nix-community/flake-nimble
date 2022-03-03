{
  description = ''Simple DNS Client & Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dnsclient-0_0_3.flake = false;
  inputs.src-dnsclient-0_0_3.type = "github";
  inputs.src-dnsclient-0_0_3.owner = "ba0f3";
  inputs.src-dnsclient-0_0_3.repo = "dnsclient.nim";
  inputs.src-dnsclient-0_0_3.ref = "refs/tags/0.0.3";
  inputs.src-dnsclient-0_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dnsclient-0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsclient-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dnsclient-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}