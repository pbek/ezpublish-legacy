<?php
/**
 * File containing the eZPrice class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 * @package kernel
 */

/*!
  \class eZPrice ezprice.php
  \ingroup eZDatatype
*/



class eZPrice extends eZSimplePrice
{
    public function __construct( $classAttribute, $contentObjectAttribute, $storedPrice = null )
    {
        parent::__construct( $classAttribute, $contentObjectAttribute, $storedPrice );

        $isVatIncluded = ( $classAttribute->attribute( eZPriceType::INCLUDE_VAT_FIELD ) == 1 );
        $VATID = $classAttribute->attribute( eZPriceType::VAT_ID_FIELD );
        $this->setVatIncluded( $isVatIncluded );
        $this->setVatType( $VATID );
    }

    /// \privatesection
}

?>
