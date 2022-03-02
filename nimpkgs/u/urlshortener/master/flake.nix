{
  description = ''A URL shortener cli app. using bit.ly'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-urlshortener-master.flake = false;
  inputs.src-urlshortener-master.type = "github";
  inputs.src-urlshortener-master.owner = "jabbalaci";
  inputs.src-urlshortener-master.repo = "UrlShortener";
  inputs.src-urlshortener-master.ref = "refs/heads/master";
  inputs.src-urlshortener-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-urlshortener-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-urlshortener-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-urlshortener-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}