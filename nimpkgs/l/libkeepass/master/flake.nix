{
  description = ''Library for reading KeePass files and decrypt the passwords within it'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libkeepass-master.flake = false;
  inputs.src-libkeepass-master.type = "github";
  inputs.src-libkeepass-master.owner = "PMunch";
  inputs.src-libkeepass-master.repo = "libkeepass";
  inputs.src-libkeepass-master.ref = "refs/heads/master";
  
  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  
  inputs."nimaes".type = "github";
  inputs."nimaes".owner = "riinr";
  inputs."nimaes".repo = "flake-nimble";
  inputs."nimaes".ref = "flake-pinning";
  inputs."nimaes".dir = "nimpkgs/n/nimaes";

  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-libkeepass-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libkeepass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libkeepass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}